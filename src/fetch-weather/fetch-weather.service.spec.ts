import { Test, TestingModule } from '@nestjs/testing';
import { FetchWeatherService } from './fetch-weather.service';

describe('FetchWeatherService', () => {
  let service: FetchWeatherService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [FetchWeatherService],
    }).compile();

    service = module.get<FetchWeatherService>(FetchWeatherService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
