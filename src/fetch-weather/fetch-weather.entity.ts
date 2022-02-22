import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('weather')
export class FetchWeatherEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 100 })
  title: string;

  @Column('json')
  forecast: string;
}
