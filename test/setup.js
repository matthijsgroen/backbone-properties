// Setup Chai
var chai = require('chai');
chai.should();
global.expect = chai.expect;

var chaiBackbone = require('chai-backbone');
chai.use(chaiBackbone);

var chaiChanges = require('chai-changes');
chai.use(chaiChanges);

global.sinon = require('sinon');

global.Backbone = require('backbone');

require('..');
