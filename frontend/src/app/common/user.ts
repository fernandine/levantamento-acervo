import { Role } from "./role";

export interface User {
  id: number;
  firstname: string;
  lastname: string;
  name: string;
  password: string;
  roles: Role[];
}
