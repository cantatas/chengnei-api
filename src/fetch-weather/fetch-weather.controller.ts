import { FetchWeatherService } from './fetch-weather.service';
import { Controller, Get, Param, Post, Body } from '@nestjs/common';

@Controller('weather')
export class FetchWeatherController {
  constructor(private readonly fetchWeatherService: FetchWeatherService) {}

  @Post()
  async create(@Body() post) {
    return await this.fetchWeatherService.create(post);
  }

  @Get(':id')
  async findById(@Param('id') id) {
    return await this.fetchWeatherService.findById(id);
  }
}
