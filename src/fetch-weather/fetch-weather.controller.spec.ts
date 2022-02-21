import { Test, TestingModule } from '@nestjs/testing';
import { FetchWeatherController } from './fetch-weather.controller';

describe('FetchWeatherController', () => {
  let controller: FetchWeatherController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FetchWeatherController],
    }).compile();

    controller = module.get<FetchWeatherController>(FetchWeatherController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
