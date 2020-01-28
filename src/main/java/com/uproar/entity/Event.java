package com.uproar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Event {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  private String title;

  private String society;

  private String description;

  public Event() {
  }

  public Event(String title, String society, String description) {
    this.title = title;
    this.society = society;
    this.description = description;
  }

  public Long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getSociety() {
    return society;
  }

  public void setSociety(String society) {
    this.society = society;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  @Override
  public String toString() {
    return "Event{" +
      "id=" + id +
      ", title='" + title + '\'' +
      ", society='" + society + '\'' +
      ", description='" + description + '\'' +
      '}';
  }
}