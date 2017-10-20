import { electrodeBridge } from 'react-native-electrode-bridge';
import StoreRequests from './StoreRequests';

const REQUESTS = new StoreRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}

export default ({requests});
