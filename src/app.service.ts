import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  async sendSoapRequest(): Promise<string> {
   return "Hola Mundo"
  }
}
