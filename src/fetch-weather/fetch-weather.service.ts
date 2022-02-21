import { HttpException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { getRepository, Repository } from 'typeorm';
import { FetchWeatherEntity } from './fetch-weather.entity';

@Injectable()
export class FetchWeatherService {
  constructor(
    @InjectRepository(FetchWeatherEntity)
    private readonly fetchWeatherRepository: Repository<FetchWeatherEntity>,
  ) {}

  async create(post: Partial<FetchWeatherEntity>): Promise<FetchWeatherEntity> {
    const { title } = post;
    if (!title) {
      throw new HttpException('缺少文章标题', 401);
    }
    const doc = await this.fetchWeatherRepository.findOne({ where: { title } });
    if (doc) {
      throw new HttpException('文章已存在', 401);
    }
    return await this.fetchWeatherRepository.save(post);
  }

  async findById(id): Promise<FetchWeatherEntity> {
    return await this.fetchWeatherRepository.findOne(id);
  }
}
