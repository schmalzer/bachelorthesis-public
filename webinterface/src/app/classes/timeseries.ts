export class TimeSeries {
    name: string;
    timestamps: string[];
    data: number[];

    constructor(name: string, timestamps: string[], data: number[]) {
        this.name = name;
        this.timestamps = timestamps;
        this.data = data;
      }
  }