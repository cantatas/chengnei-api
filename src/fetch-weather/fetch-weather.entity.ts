import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('fWeather')
export class FetchWeatherEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 50 })
  title: string;
}
