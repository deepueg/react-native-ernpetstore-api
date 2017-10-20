import { electrodeBridge } from 'react-native-electrode-bridge';
import PetRequests from './PetRequests';
import PetEvents from './PetEvents';

const REQUESTS = new PetRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}

const EVENTS = new PetEvents(electrodeBridge);

export function events() {
  return EVENTS;
}
export default ({requests, events});
