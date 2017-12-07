.class public abstract La/a/ag;
.super La/a/aa;


# direct methods
.method public static a(La/a/l;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, La/a/l;->e()V

    invoke-virtual {p0}, La/a/l;->d()[La/a/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, La/a/w;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, La/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v6, v11

    :goto_0
    array-length v0, v1

    if-lt v6, v0, :cond_2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, La/a/w;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, La/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v0, v1, v6

    invoke-virtual {v0}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v1, v6

    invoke-virtual {v0}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v7, v1, v6

    invoke-virtual {v7}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v6, p0, La/a/l;->a:La/a/ae;

    if-eqz v6, :cond_6

    iget-object v6, p0, La/a/l;->a:La/a/ae;

    :goto_2
    if-ne v0, v13, :cond_7

    aget-object v0, v1, v11

    invoke-virtual {v6, v0}, La/a/ae;->a(La/a/ac;)La/a/ag;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, La/a/ag;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La/a/ag;->b()V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-static {v6, v12}, La/a/ae;->a(Ljava/util/Properties;La/a/y;)La/a/ae;

    move-result-object v6

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, La/a/ag;->b()V

    throw v1

    :cond_7
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    move v1, v11

    move-object v2, v12

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_9
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [La/a/ac;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v3, v0

    :goto_4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [La/a/ac;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v4, v0

    :goto_5
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [La/a/ac;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v5, v0

    :goto_6
    new-instance v0, La/a/w;

    const-string v1, "Sending failed"

    invoke-direct/range {v0 .. v5}, La/a/w;-><init>(Ljava/lang/String;Ljava/lang/Exception;[La/a/ac;[La/a/ac;[La/a/ac;)V

    throw v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v7, v7, [La/a/ac;

    invoke-virtual {p0, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    aget-object v8, v7, v11

    invoke-virtual {v6, v8}, La/a/ae;->a(La/a/ac;)La/a/ag;

    move-result-object v8

    if-nez v8, :cond_b

    move v8, v11

    :goto_7
    array-length v9, v7

    if-ge v8, v9, :cond_8

    aget-object v9, v7, v8

    invoke-virtual {v5, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    :try_start_1
    invoke-virtual {v8}, La/a/ag;->a()V
    :try_end_1
    .catch La/a/w; {:try_start_1 .. :try_end_1} :catch_0
    .catch La/a/o; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v8}, La/a/ag;->b()V

    goto :goto_3

    :catch_0
    move-exception v1

    if-nez v2, :cond_f

    move-object v2, v1

    :goto_8
    :try_start_2
    invoke-virtual {v1}, La/a/w;->c()[La/a/ac;

    move-result-object v7

    if-eqz v7, :cond_c

    move v9, v11

    :goto_9
    array-length v10, v7

    if-lt v9, v10, :cond_10

    :cond_c
    invoke-virtual {v1}, La/a/w;->a()[La/a/ac;

    move-result-object v7

    if-eqz v7, :cond_d

    move v9, v11

    :goto_a
    array-length v10, v7

    if-lt v9, v10, :cond_11

    :cond_d
    invoke-virtual {v1}, La/a/w;->b()[La/a/ac;

    move-result-object v1

    if-eqz v1, :cond_e

    move v7, v11

    :goto_b
    array-length v9, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lt v7, v9, :cond_12

    :cond_e
    invoke-virtual {v8}, La/a/ag;->b()V

    move v1, v13

    goto/16 :goto_3

    :cond_f
    :try_start_3
    invoke-virtual {v2, v1}, La/a/o;->a(Ljava/lang/Exception;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-virtual {v8}, La/a/ag;->b()V

    throw v0

    :cond_10
    :try_start_4
    aget-object v10, v7, v9

    invoke-virtual {v5, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    aget-object v10, v7, v9

    invoke-virtual {v3, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_12
    aget-object v9, v1, v7

    invoke-virtual {v4, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :catch_1
    move-exception v1

    if-nez v2, :cond_13

    :goto_c
    invoke-virtual {v8}, La/a/ag;->b()V

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    :cond_13
    :try_start_5
    invoke-virtual {v2, v1}, La/a/o;->a(Ljava/lang/Exception;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    goto :goto_c

    :cond_14
    move-object v5, v12

    goto/16 :goto_6

    :cond_15
    move-object v4, v12

    goto/16 :goto_5

    :cond_16
    move-object v3, v12

    goto/16 :goto_4
.end method
