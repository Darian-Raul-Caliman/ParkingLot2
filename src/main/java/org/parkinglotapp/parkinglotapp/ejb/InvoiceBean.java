package org.parkinglotapp.parkinglotapp.ejb;

import jakarta.ejb.Stateful;
import jakarta.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Stateful
@SessionScoped
public class InvoiceBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Set<Long> userIds = new HashSet<>();

    public InvoiceBean() {
    }

    public Set<Long> getUserIds() {
        return userIds;
    }

    public void setUserIds(Set<Long> userIds) {
        this.userIds = userIds;
    }

    public void addUserId(Long id) {
        this.userIds.add(id);
    }
}