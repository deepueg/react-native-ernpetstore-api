/**
 * Swagger Petstore
 * This is a sample server Petstore server.  You can find out more about Swagger at &lt;a href&#61;&quot;http://swagger.io&quot;&gt;http://swagger.io&lt;/a&gt; or on irc.freenode.net, #swagger.  For this sample, you can use the api key &quot;special-key&quot; to test the authorization filters
 *
 * OpenAPI spec version: 1.0.0
 * Contact: apiteam@wordnik.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * Do not edit the class manually.
 */
import {expect} from 'chai';
import PetRequests  from '../../src/api/PetRequests';
import PetEvents  from '../../src/api/PetEvents';

describe('PetApi', function(){
  let requests;
  let events;
  beforeEach(function() {
    requests = new PetRequests({
        registerHandler(){
        },
        sendRequest(){
        }
    });
    events = new PetEvents({
        registerEventListener(){
        },
        emitEvent(){
        }
    });

  });


    describe('addPet', function() {
      it('should send request addPet successfully', ()=> {
        //uncomment below and update the code to test addPet
        //return requests.addPet(opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('deletePet', function() {
      it('should send request deletePet successfully', ()=> {
        //uncomment below and update the code to test deletePet
        //return requests.deletePet(petId: number, opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('findPetsByStatus', function() {
      it('should send request findPetsByStatus successfully', ()=> {
        //uncomment below and update the code to test findPetsByStatus
        //return requests.findPetsByStatus(opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('findPetsByTags', function() {
      it('should send request findPetsByTags successfully', ()=> {
        //uncomment below and update the code to test findPetsByTags
        //return requests.findPetsByTags(opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('findPetsByType', function() {
      it('should send request findPetsByType successfully', ()=> {
        //uncomment below and update the code to test findPetsByType
        //return requests.findPetsByType(opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('getPetById', function() {
      it('should send request getPetById successfully', ()=> {
        //uncomment below and update the code to test getPetById
        //return requests.getPetById(petId: number).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('imageUploaded', function() {
        it('should emit event imageUploaded successfully', (done)=> {
        //uncomment below and update the code to test imageUploaded
        //register listener.
        //events.addImageUploadedEventListener(()=>done());
        //emit event.
        //events.emitImageUploaded(petId: number);
        //});
        done();
        });
    });

    describe('updatePet', function() {
      it('should send request updatePet successfully', ()=> {
        //uncomment below and update the code to test updatePet
        //return requests.updatePet(opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('updatePetWithForm', function() {
      it('should send request updatePetWithForm successfully', ()=> {
        //uncomment below and update the code to test updatePetWithForm
        //return requests.updatePetWithForm(petId: string, opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

    describe('uploadFile', function() {
      it('should send request uploadFile successfully', ()=> {
        //uncomment below and update the code to test uploadFile
        //return requests.uploadFile(petId: number, opts: any).then(response=> {
        //  if (error) throw error;
        //  expect(response).to.be();
        //});

      });
    });

});
