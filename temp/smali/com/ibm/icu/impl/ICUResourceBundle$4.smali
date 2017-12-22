.class final Lcom/ibm/icu/impl/ICUResourceBundle$4;
.super Lcom/ibm/icu/impl/ICUResourceBundle$Loader;
.source "ICUResourceBundle.java"


# instance fields
.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$defaultID:Ljava/lang/String;

.field final synthetic val$fullName:Ljava/lang/String;

.field final synthetic val$localeID:Ljava/lang/String;

.field final synthetic val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$fullName:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$localeID:Ljava/lang/String;

    iput-object p4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iput-object p5, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    iput-object p6, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle$Loader;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$1;)V

    return-void
.end method


# virtual methods
.method public load()Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 9

    .prologue
    const/16 v7, 0x5f

    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 1145
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v8, :cond_3

    const-string/jumbo v0, "root"

    move-object v2, v0

    .line 1154
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    .line 1155
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    invoke-static {v1, v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 1157
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The bundle created is: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and openType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and bundle.getNoFallback="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$500(Lcom/ibm/icu/impl/ICUResourceBundle;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1158
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    sget-object v5, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    if-eq v3, v5, :cond_2

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$500(Lcom/ibm/icu/impl/ICUResourceBundle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1210
    :cond_2
    :goto_3
    return-object v1

    .line 1153
    :cond_3
    const-string/jumbo v0, ""

    move-object v2, v0

    goto :goto_0

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$localeID:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v3, v4

    .line 1157
    goto :goto_2

    .line 1174
    :cond_6
    if-nez v1, :cond_9

    .line 1175
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1176
    if-eq v3, v8, :cond_7

    .line 1178
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    goto :goto_3

    .line 1182
    :cond_7
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    .line 1183
    invoke-static {v3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1185
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    goto :goto_3

    .line 1186
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    if-eq v0, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    goto :goto_3

    .line 1192
    :cond_9
    const/4 v3, 0x0

    .line 1193
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v5

    .line 1194
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object v0, v1

    .line 1197
    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;

    const-string/jumbo v7, "%%Parent"

    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_a

    .line 1199
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1206
    :goto_4
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1207
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    goto :goto_3

    .line 1200
    :cond_a
    if-eq v6, v8, :cond_b

    .line 1201
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_4

    .line 1202
    :cond_b
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1203
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundle$4;->val$openType:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_4

    :cond_c
    move-object v0, v3

    goto :goto_4
.end method
