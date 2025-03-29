package com.library.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.model.fetch1;

@Repository
public interface fetrepro extends JpaRepository<fetch1,Integer>
{

}
