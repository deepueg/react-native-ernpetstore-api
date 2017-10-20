import { electrodeBridge } from 'react-native-electrode-bridge';
import UserRequests from './UserRequests';

const REQUESTS = new UserRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}

export default ({requests});
