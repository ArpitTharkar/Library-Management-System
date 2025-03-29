package com.library.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.model.libraryman;

@Repository
public interface librepo extends JpaRepository<libraryman,Integer>
{
	public libraryman findByEmail(String email);
}
