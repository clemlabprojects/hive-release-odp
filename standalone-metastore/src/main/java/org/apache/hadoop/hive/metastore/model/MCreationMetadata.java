/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.hadoop.hive.metastore.model;

import java.util.Set;

/**
 * Represents the creation metadata of a materialization.
 * It includes the database and table name for the materialization,
 * the set of tables that it uses, the valid transaction list
 * when it was created, and the creation/rebuild time.
 */
public class MCreationMetadata {

  private String catalogName;
  private String dbName;
  private String tblName;
  private Set<MTable> tables;
  private String txnList;
  private long materializationTime;

  public MCreationMetadata() {
  }

  public MCreationMetadata(String catName, String dbName, String tblName,
      Set<MTable> tables, String txnList, long materializationTime) {
    this.catalogName = catName;
    this.dbName = dbName;
    this.tblName = tblName;
    this.tables = tables;
    this.txnList = txnList;
    this.materializationTime = materializationTime;
  }

  public Set<MTable> getTables() {
    return tables;
  }

  public void setTables(Set<MTable> tables) {
    this.tables = tables;
  }

  public String getTxnList() {
    return txnList;
  }

  public void setTxnList(String txnList) {
    this.txnList = txnList;
  }

  public String getCatalogName() {
    return catalogName;
  }

  public void setCatalogName(String catName) {
    this.catalogName = catName;
  }

  public String getDbName() {
    return dbName;
  }

  public void setDbName(String dbName) {
    this.dbName = dbName;
  }

  public String getTblName() {
    return tblName;
  }

  public void setTblName(String tblName) {
    this.tblName = tblName;
  }

  public long getMaterializationTime() {
    return materializationTime;
  }

  public void setMaterializationTime(long materializationTime) {
    this.materializationTime = materializationTime;
  }
}
