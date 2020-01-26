package com.uproar.service;

import com.uproar.entity.Event;
import com.uproar.repositry.EventRepository;
import org.springframework.stereotype.Service;

@Service
public class EventService {

  private EventRepository eventRepository;

  public EventService(EventRepository eventRepository) {
    this.eventRepository = eventRepository;
  }

  public Event getEvent(long id) {
    return eventRepository.findById(id).orElse(null);
  }

  public Event createEvent(Event event) {
    System.out.println(event);
    event = eventRepository.save(event);
    return event;
  }
}
