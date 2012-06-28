/* This was inspired by Zepto.js */
Wheel.EventManager = Wheel.View.subclass({
  initializeDom: function(opts) {
    this.optionize(opts);
    this.$ = $(document);
  },

  listen: function() {
    var self = this;
    this.$.on('dragstart', function(e) {
      self.onDragStart(e);
    });
  },

  onDragStart: function(event) {
    event.preventDefault();
    this._setTarget(event);
    this.touch.type = 'drag';

    var self = this;
    function onMove(e) {
      e.preventDefault();
      self.onDragMove(e);
    }

    function onEnd(e) {
      e.preventDefault();
      self.target.off(self.moveEvent, onMove);
      self.target.off(self.endEvent, onEnd);
      self.onDragEnd(e);
    }

    this.target.on(this.moveEvent, onMove);
    this.target.on(this.endEvent, onEnd);
  },

  onDragMove: function(e) {
    this._unpackEvent(e);
    this._triggerEvent(e, 'dragmove');
  },

  onDragEnd: function(e) {
    this._unpackEvent(e);
    this._triggerEvent(e, 'dragend');
  },

  onStart: function(e) {
    e = this._normalizeEvent(e);
    this._setTarget(e);

    // clear existing timeout because there is a new touch start event
    // timeouts are set for 'taphold' and/or for 'tap'
    this._clearTimeout();

    // set up the touch object
    this.touch.x1 = e.pageX;
    this.touch.y1 = e.pageY;
    this.touch.time = Date.now();

    // what about checking for distance from original tap
    if (!this._testDoubleTap()) {
      var self = this;
      // wait to see if this is a taphold event
      this.touchTimout = setTimeout(function() {
        self._testTouchhold(e);
      }, this.HOLD_DELAY);
    }
  },

  onMove: function(e) {
    if (this.touch.type) { return; }
    e = this._unpackEvent(e);
    this._testSwipe(e);
  },

  onEnd: function(e) {
    e = this._unpackEvent(e);

    if ( this.touch.type && this.touch.type.match(/doubletap|taphold|swipe|pinch|zoom|drag/) ) {
      // event triggered during other events, we only need to clear the touches
      this._resetTouch();
    } else {
      this._handleTap(e);
    }
  },

  _triggerEvent: function(originalEvent, altType) {
    if (!this.target) { return; }
    var x = 'x2' in this.touch ? this.touch.x2 : this.touch.x1;
    var y = 'y2' in this.touch ? this.touch.y2 : this.touch.y1;

    this.target.trigger($.Event(altType || this.touch.type, {
      originalEvent: originalEvent,
      pageX: x,
      pageY: y
    }));
  },

  _setTarget: function(e) {
    var node = e.target;
    this.target = $('tagName' in node ? node : node.parentNode);
  },

  _clearTimeout: function() {
    this.touchTimeout && clearTimeout(this.touchTimeout);
  },

  _resetTouch: function() {
    this.target = null;
    this.lastTouch = this.touch;
    this.touch = {};
  },

  _normalizeEvent: function(e) {
    return e;
  },

  _unpackEvent: function(e) {
    e = this._normalizeEvent(e);

    this.touch.x2 = e.pageX;
    this.touch.y2 = e.pageY;

    return e;
  },

  _handleTap: function(e) {
    if (this.RESPONSIVE_TAP) {
      this._onTap(e);
    } else {
      // wait to see if it is a tap, or if it is a double tap
      var self = this;
      this.touchTimeout = setTimeout(function(){
        self._onTap(e);
      }, this.DOUBLE_DELAY);
    }
  },

  _onTap: function(e) {
    this.touchTimeout = null;
    this.touch.type = 'tap';
    this._triggerEvent(e);
    this._resetTouch();
  },

  _testDoubleTap: function(e) {
    var delta = this.lastTouch && this.lastTouch.time ? this.touch.time - this.lastTouch.time : 0;
    if (delta > 0 && delta <= this.DOUBLE_DELAY) {
      this.touch.type = 'doubletap';
      this._triggerEvent(e);
      return true;
    }
  },

  _testSwipe: function(e) {
    // if we have moved a certain distance, call it a swipe
    if (Math.abs(this.touch.x1 - this.touch.x2) >= this.SWIPE_TOLERANCE ||
        Math.abs(this.touch.y1 - this.touch.y2) >= this.SWIPE_TOLERANCE) {
      this.touch.type = 'swipe';
      var _direction = this._direction(this.touch.x1, this.touch.x2, this.touch.y1, this.touch.y2);
      if ( this.preventScroll(_direction) ) {
        e.preventDefault();
      }
      this._triggerEvent(e);
      this._triggerEvent(e, "swipe" + _direction);
    }
  },

  _testTouchhold: function(e) {
    var x1 = this.touch.x1,
        y1 = this.touch.y1,
        x2 = 'x2' in this.touch ? this.touch.x2 : x1,
        y2 = 'y2' in this.touch ? this.touch.y2 : y1;

    if ((this.touch.time && (Date.now() - this.touch.time >= this.HOLD_DELAY)) &&
        (Math.abs(x1 - x2) <= this.HOLD_TOLERANCE) &&
        (Math.abs(y1 - y2) <= this.HOLD_TOLERANCE)) {
      this.touch.type = 'taphold';
      this._triggerEvent(e);
    }
  },

  _direction: function(x1,x2, y1,y2) {
    var xDelta = Math.abs(x1 - x2),
        yDelta = Math.abs(y1 - y2);
    if (xDelta >= yDelta) {
      return (x1 - x2 > 0 ? 'left' : 'right');
    } else {
      return (y1 - y2 > 0 ? 'up' : 'down');
    }
  },

  // customizations
  preventScroll: function() { return false; },
  HOLD_DELAY: 750,
  DOUBLE_DELAY: 250,
  HOLD_TOLERANCE: 10,
  SWIPE_TOLERANCE: 100,
  RESPONSIVE_TAP: true,
  GESTURE_TOLERANCE: 20
});