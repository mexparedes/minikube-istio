import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller('controller')
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  async getHello() {
    console.log("Request entrante")
    return await this.appService.sendSoapRequest();
  }
}
