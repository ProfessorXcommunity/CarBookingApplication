package com.BookYourCab.CarBookingApp.Configs;

import com.BookYourCab.CarBookingApp.Dto.PointDto;
import com.BookYourCab.CarBookingApp.Utils.GeometryUtil;
import org.locationtech.jts.geom.Point;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MapperConfig {

    @Bean
    public ModelMapper modelMapper(){
        ModelMapper mapper = new ModelMapper();
        mapper.typeMap(PointDto.class, Point.class).setConverter(context ->{
            PointDto pointDto = context.getSource();
            Point point = GeometryUtil.createPoint(pointDto);
            point.setSRID(4326); // ✅ Ensure SRID is always set
            return point;
        });
        mapper.typeMap(Point.class,PointDto.class).setConverter(context->{
            Point point = context.getSource();
            double coordinates[] = {
                    point.getX(),
                    point.getY()
            };
            return new PointDto(coordinates);
        });

        return mapper;
    }
}
