/**
 * Created by oleksiitromsa on 25.01.2021.
 */

public with sharing class WeatherMapper {
    public static Weather__c dtoToWeather(WeatherDto dto) {
        Weather__c weather = new Weather__c(
                City_coordinates__c = Location.newInstance(dto.coord.lat, dto.coord.lon),
                Weather_Id__c = dto.weather.get(0).id,
                Weather_Main__c = dto.weather.get(0).main,
                Weather_Description__c = dto.weather.get(0).description,
                Weather_Icon__c = dto.weather.get(0).icon,
                Base__c = dto.base,
                Temperature__c = dto.main.temp,
                Feels_Like__c = dto.main.feels_like,
                Temp_Max__c = dto.main.temp_max,
                Temp_Min__c = dto.main.temp_min,
                Pressure__c = dto.main.pressure,
                Humidity__c = dto.main.humidity,
                Visibility__c = dto.visibility,
                Wind_Speed__c = dto.wind.speed,
                Wind_Deg__c = dto.wind.deg,
                Clouds_All__c = dto.clouds.all,
                Datetime__c = Datetime.newInstance(dto.dt),
                Sys_Type__c = dto.sys.type_Z,
                Sys_Id__c = dto.sys.id,
                Sys_Country__c = dto.sys.country,
                Sunrize__c = Datetime.newInstance(dto.sys.sunrise),
                Sunset__c = Datetime.newInstance(dto.sys.sunset),
                Timezone__c = dto.timezone,
                External_Id__c = dto.id,
                City_Name__c = dto.name,
                Cod__c = dto.cod
                );

        return weather;
    }
}