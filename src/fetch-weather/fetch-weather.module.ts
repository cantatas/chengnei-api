import { Module } from '@nestjs/common';
import { FetchWeatherController } from './fetch-weather.controller';
import { FetchWeatherService } from './fetch-weather.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { FetchWeatherEntity } from './fetch-weather.entity';

@Module({
  imports: [TypeOrmModule.forFeature([FetchWeatherEntity])],
  controllers: [FetchWeatherController],
  providers: [FetchWeatherService],
})
export class FetchWeatherModule {}
