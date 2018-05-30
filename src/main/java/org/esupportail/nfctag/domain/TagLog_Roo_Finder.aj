// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.nfctag.domain;

import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.esupportail.nfctag.domain.TagLog;

privileged aspect TagLog_Roo_Finder {
    
    public static Long TagLog.countFindTagLogsByApplicationNameEquals(String applicationName) {
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.applicationName = :applicationName", Long.class);
        q.setParameter("applicationName", applicationName);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByAuthDateBetween(Date minAuthDate, Date maxAuthDate) {
        if (minAuthDate == null) throw new IllegalArgumentException("The minAuthDate argument is required");
        if (maxAuthDate == null) throw new IllegalArgumentException("The maxAuthDate argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.authDate BETWEEN :minAuthDate AND :maxAuthDate", Long.class);
        q.setParameter("minAuthDate", minAuthDate);
        q.setParameter("maxAuthDate", maxAuthDate);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByAuthDateGreaterThan(Date authDate) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.authDate > :authDate", Long.class);
        q.setParameter("authDate", authDate);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByAuthDateGreaterThanAndNumeroIdEquals(Date authDate, String numeroId) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.authDate > :authDate  AND o.numeroId = :numeroId", Long.class);
        q.setParameter("authDate", authDate);
        q.setParameter("numeroId", numeroId);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByAuthDateGreaterThanAndNumeroIdEqualsAndApplicationNameEqualsAndLocationEquals(Date authDate, String numeroId, String applicationName, String location) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.authDate > :authDate  AND o.numeroId = :numeroId  AND o.applicationName = :applicationName  AND o.location = :location", Long.class);
        q.setParameter("authDate", authDate);
        q.setParameter("numeroId", numeroId);
        q.setParameter("applicationName", applicationName);
        q.setParameter("location", location);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByCsnEquals(String csn) {
        if (csn == null || csn.length() == 0) throw new IllegalArgumentException("The csn argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.csn = :csn", Long.class);
        q.setParameter("csn", csn);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByDesfireIdEquals(String desfireId) {
        if (desfireId == null || desfireId.length() == 0) throw new IllegalArgumentException("The desfireId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.desfireId = :desfireId", Long.class);
        q.setParameter("desfireId", desfireId);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByEppnEquals(String eppn) {
        if (eppn == null || eppn.length() == 0) throw new IllegalArgumentException("The eppn argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.eppn = :eppn", Long.class);
        q.setParameter("eppn", eppn);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByEppnInitLike(String eppnInit) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        eppnInit = eppnInit.replace('*', '%');
        if (eppnInit.charAt(0) != '%') {
            eppnInit = "%" + eppnInit;
        }
        if (eppnInit.charAt(eppnInit.length() - 1) != '%') {
            eppnInit = eppnInit + "%";
        }
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE LOWER(o.eppnInit) LIKE LOWER(:eppnInit)", Long.class);
        q.setParameter("eppnInit", eppnInit);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByIdAndNumeroIdEquals(Long id, String numeroId) {
        if (id == null) throw new IllegalArgumentException("The id argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.id = :id AND o.numeroId = :numeroId", Long.class);
        q.setParameter("id", id);
        q.setParameter("numeroId", numeroId);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByLocationEquals(String location) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.location = :location", Long.class);
        q.setParameter("location", location);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByNumeroIdEquals(String numeroId) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.numeroId = :numeroId", Long.class);
        q.setParameter("numeroId", numeroId);
        return ((Long) q.getSingleResult());
    }
    
    public static Long TagLog.countFindTagLogsByNumeroIdEqualsAndApplicationNameEqualsAndLocationEquals(String numeroId, String applicationName, String location) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM TagLog AS o WHERE o.numeroId = :numeroId  AND o.applicationName = :applicationName  AND o.location = :location", Long.class);
        q.setParameter("numeroId", numeroId);
        q.setParameter("applicationName", applicationName);
        q.setParameter("location", location);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByApplicationNameEquals(String applicationName) {
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.applicationName = :applicationName", TagLog.class);
        q.setParameter("applicationName", applicationName);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByApplicationNameEquals(String applicationName, String sortFieldName, String sortOrder) {
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.applicationName = :applicationName");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("applicationName", applicationName);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateBetween(Date minAuthDate, Date maxAuthDate) {
        if (minAuthDate == null) throw new IllegalArgumentException("The minAuthDate argument is required");
        if (maxAuthDate == null) throw new IllegalArgumentException("The maxAuthDate argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.authDate BETWEEN :minAuthDate AND :maxAuthDate", TagLog.class);
        q.setParameter("minAuthDate", minAuthDate);
        q.setParameter("maxAuthDate", maxAuthDate);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateBetween(Date minAuthDate, Date maxAuthDate, String sortFieldName, String sortOrder) {
        if (minAuthDate == null) throw new IllegalArgumentException("The minAuthDate argument is required");
        if (maxAuthDate == null) throw new IllegalArgumentException("The maxAuthDate argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.authDate BETWEEN :minAuthDate AND :maxAuthDate");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("minAuthDate", minAuthDate);
        q.setParameter("maxAuthDate", maxAuthDate);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateGreaterThan(Date authDate) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.authDate > :authDate", TagLog.class);
        q.setParameter("authDate", authDate);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateGreaterThan(Date authDate, String sortFieldName, String sortOrder) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.authDate > :authDate");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("authDate", authDate);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateGreaterThanAndNumeroIdEquals(Date authDate, String numeroId) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.authDate > :authDate  AND o.numeroId = :numeroId", TagLog.class);
        q.setParameter("authDate", authDate);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateGreaterThanAndNumeroIdEquals(Date authDate, String numeroId, String sortFieldName, String sortOrder) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.authDate > :authDate  AND o.numeroId = :numeroId");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("authDate", authDate);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateGreaterThanAndNumeroIdEqualsAndApplicationNameEqualsAndLocationEquals(Date authDate, String numeroId, String applicationName, String location) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.authDate > :authDate  AND o.numeroId = :numeroId  AND o.applicationName = :applicationName  AND o.location = :location", TagLog.class);
        q.setParameter("authDate", authDate);
        q.setParameter("numeroId", numeroId);
        q.setParameter("applicationName", applicationName);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByAuthDateGreaterThanAndNumeroIdEqualsAndApplicationNameEqualsAndLocationEquals(Date authDate, String numeroId, String applicationName, String location, String sortFieldName, String sortOrder) {
        if (authDate == null) throw new IllegalArgumentException("The authDate argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.authDate > :authDate  AND o.numeroId = :numeroId  AND o.applicationName = :applicationName  AND o.location = :location");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("authDate", authDate);
        q.setParameter("numeroId", numeroId);
        q.setParameter("applicationName", applicationName);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByCsnEquals(String csn) {
        if (csn == null || csn.length() == 0) throw new IllegalArgumentException("The csn argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.csn = :csn", TagLog.class);
        q.setParameter("csn", csn);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByCsnEquals(String csn, String sortFieldName, String sortOrder) {
        if (csn == null || csn.length() == 0) throw new IllegalArgumentException("The csn argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.csn = :csn");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("csn", csn);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByDesfireIdEquals(String desfireId) {
        if (desfireId == null || desfireId.length() == 0) throw new IllegalArgumentException("The desfireId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.desfireId = :desfireId", TagLog.class);
        q.setParameter("desfireId", desfireId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByDesfireIdEquals(String desfireId, String sortFieldName, String sortOrder) {
        if (desfireId == null || desfireId.length() == 0) throw new IllegalArgumentException("The desfireId argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.desfireId = :desfireId");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("desfireId", desfireId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByEppnEquals(String eppn) {
        if (eppn == null || eppn.length() == 0) throw new IllegalArgumentException("The eppn argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.eppn = :eppn", TagLog.class);
        q.setParameter("eppn", eppn);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByEppnEquals(String eppn, String sortFieldName, String sortOrder) {
        if (eppn == null || eppn.length() == 0) throw new IllegalArgumentException("The eppn argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.eppn = :eppn");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("eppn", eppn);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByEppnInitLike(String eppnInit) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        eppnInit = eppnInit.replace('*', '%');
        if (eppnInit.charAt(0) != '%') {
            eppnInit = "%" + eppnInit;
        }
        if (eppnInit.charAt(eppnInit.length() - 1) != '%') {
            eppnInit = eppnInit + "%";
        }
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE LOWER(o.eppnInit) LIKE LOWER(:eppnInit)", TagLog.class);
        q.setParameter("eppnInit", eppnInit);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByEppnInitLike(String eppnInit, String sortFieldName, String sortOrder) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        eppnInit = eppnInit.replace('*', '%');
        if (eppnInit.charAt(0) != '%') {
            eppnInit = "%" + eppnInit;
        }
        if (eppnInit.charAt(eppnInit.length() - 1) != '%') {
            eppnInit = eppnInit + "%";
        }
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE LOWER(o.eppnInit) LIKE LOWER(:eppnInit)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("eppnInit", eppnInit);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByIdAndNumeroIdEquals(Long id, String numeroId) {
        if (id == null) throw new IllegalArgumentException("The id argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.id = :id AND o.numeroId = :numeroId", TagLog.class);
        q.setParameter("id", id);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByIdAndNumeroIdEquals(Long id, String numeroId, String sortFieldName, String sortOrder) {
        if (id == null) throw new IllegalArgumentException("The id argument is required");
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.id = :id AND o.numeroId = :numeroId");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("id", id);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByLocationEquals(String location) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.location = :location", TagLog.class);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByLocationEquals(String location, String sortFieldName, String sortOrder) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.location = :location");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByNumeroIdEquals(String numeroId) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.numeroId = :numeroId", TagLog.class);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByNumeroIdEquals(String numeroId, String sortFieldName, String sortOrder) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.numeroId = :numeroId");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByNumeroIdEqualsAndApplicationNameEqualsAndLocationEquals(String numeroId, String applicationName, String location) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        TypedQuery<TagLog> q = em.createQuery("SELECT o FROM TagLog AS o WHERE o.numeroId = :numeroId  AND o.applicationName = :applicationName  AND o.location = :location", TagLog.class);
        q.setParameter("numeroId", numeroId);
        q.setParameter("applicationName", applicationName);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<TagLog> TagLog.findTagLogsByNumeroIdEqualsAndApplicationNameEqualsAndLocationEquals(String numeroId, String applicationName, String location, String sortFieldName, String sortOrder) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        if (applicationName == null || applicationName.length() == 0) throw new IllegalArgumentException("The applicationName argument is required");
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = TagLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM TagLog AS o WHERE o.numeroId = :numeroId  AND o.applicationName = :applicationName  AND o.location = :location");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<TagLog> q = em.createQuery(queryBuilder.toString(), TagLog.class);
        q.setParameter("numeroId", numeroId);
        q.setParameter("applicationName", applicationName);
        q.setParameter("location", location);
        return q;
    }
    
}
