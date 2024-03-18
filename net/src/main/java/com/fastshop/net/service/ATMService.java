package com.fastshop.net.service;

import com.fastshop.net.entity.ATM;
import com.fastshop.net.entity.Account;

public interface ATMService {
    void create(ATM atm);
    void save(ATM atm);
    ATM findById(Integer id);
    ATM findByAccount(Account account);
    ATM findByNumber(String number);
}
