package com.example.demo.service;

import com.example.demo.domain.Location;
import com.example.demo.domain.User;
import com.example.demo.repository.LocationRepository;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Service
public class LocationService {

    @Autowired
    private LocationRepository locationRepository;

    @Autowired
    private UserRepository userRepository;

    public void setLocation(HashMap<String,String> map)
    {
        int user_id=Integer.parseInt(map.get("user"));
        double latitude=Double.parseDouble(map.get("latitude"));
        double longitude=Double.parseDouble(map.get("longitude"));

        Location location=new Location();
        location.setUser(userRepository.getOne(user_id));
        location.setLatitude(latitude);
        location.setLongitude(longitude);

        locationRepository.save(location);
    }

    public List<Location> getLocations(int uid, Timestamp date)
    {
        List<Location> locations=locationRepository.getLocationsByUserIdAndCreated_atEquals(uid,date);

        System.out.println(locations.toString());
        return locations;
    }
}
