.class final Lcom/ibm/icu/impl/ResourceBundleWrapper$2;
.super Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;
.source "ResourceBundleWrapper.java"


# instance fields
.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$defaultID:Ljava/lang/String;

.field final synthetic val$disableFallback:Z

.field final synthetic val$localeID:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iput-object p4, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iput-boolean p5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    iput-object p6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;-><init>(Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V

    return-void
.end method


# virtual methods
.method public load()Lcom/ibm/icu/impl/ResourceBundleWrapper;
    .locals 8

    .prologue
    const/16 v1, 0x5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 154
    .line 155
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 159
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 160
    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v1, v0, v4, v6, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    move v1, v2

    move-object v4, v0

    .line 168
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/util/ResourceBundle;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    .line 171
    new-instance v6, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    if-eqz v4, :cond_0

    .line 173
    :try_start_1
    invoke-static {v6, v4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$300(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$402(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$502(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move v3, v2

    move-object v2, v6

    .line 188
    :goto_1
    if-eqz v3, :cond_4

    .line 190
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".properties"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v3, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;

    invoke-direct {v3, p0, v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;-><init>(Lcom/ibm/icu/impl/ResourceBundleWrapper$2;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 199
    if-eqz v0, :cond_2

    .line 201
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 203
    :try_start_3
    new-instance v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    new-instance v5, Ljava/util/PropertyResourceBundle;

    invoke-direct {v5, v3}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    if-eqz v4, :cond_1

    .line 205
    :try_start_4
    invoke-static {v0, v4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$700(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$402(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$502(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v2, v0

    .line 222
    :cond_2
    :goto_2
    if-nez v2, :cond_c

    :try_start_6
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    .line 224
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$800(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 226
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v0, v3, v5, v6, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    move-object v0, v2

    .line 229
    :goto_3
    if-nez v0, :cond_b

    if-eqz v1, :cond_3

    :try_start_7
    iget-boolean v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-nez v1, :cond_b

    :cond_3
    :goto_4
    move-object v2, v4

    .line 239
    :cond_4
    :goto_5
    if-eqz v2, :cond_a

    .line 240
    invoke-static {v2}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$900(Lcom/ibm/icu/impl/ResourceBundleWrapper;)V

    .line 244
    :cond_5
    :goto_6
    return-object v2

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 163
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v0, v1, v4, v6, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    .line 164
    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v0

    :goto_7
    move-object v2, v5

    .line 186
    goto/16 :goto_1

    .line 179
    :catch_1
    move-exception v0

    :goto_8
    move-object v2, v5

    .line 186
    goto/16 :goto_1

    .line 181
    :catch_2
    move-exception v0

    .line 182
    :goto_9
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "failure"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    :cond_7
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 185
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_8
    move v3, v2

    move-object v2, v5

    goto/16 :goto_1

    .line 214
    :catch_3
    move-exception v2

    move-object v2, v0

    .line 217
    goto/16 :goto_2

    .line 209
    :catch_4
    move-exception v0

    move-object v0, v2

    .line 213
    :goto_a
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object v2, v0

    .line 216
    goto/16 :goto_2

    .line 214
    :catch_5
    move-exception v2

    move-object v2, v0

    .line 217
    goto/16 :goto_2

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    :goto_b
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 216
    :goto_c
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 232
    :catch_6
    move-exception v0

    .line 233
    :goto_d
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 234
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "failure"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    :cond_9
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 242
    :cond_a
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Returning null for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 214
    :catch_7
    move-exception v1

    goto :goto_c

    .line 232
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_d

    .line 212
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b

    .line 209
    :catch_9
    move-exception v2

    goto :goto_a

    .line 181
    :catch_a
    move-exception v0

    move-object v5, v6

    goto/16 :goto_9

    .line 179
    :catch_b
    move-exception v0

    move-object v5, v6

    goto/16 :goto_8

    .line 177
    :catch_c
    move-exception v0

    move-object v5, v6

    goto/16 :goto_7

    :cond_b
    move-object v4, v0

    goto/16 :goto_4

    :cond_c
    move-object v0, v2

    goto/16 :goto_3

    :cond_d
    move v1, v2

    move-object v4, v5

    goto/16 :goto_0
.end method
