.class final Lcom/ibm/icu/impl/ICUResourceBundle$2;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bn:Ljava/lang/String;

.field final synthetic val$names:Ljava/util/Set;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 606
    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-object v6

    .line 609
    :cond_1
    new-instance v2, Lcom/ibm/icu/impl/ICUResourceBundle$2$1;

    invoke-direct {v2, p0}, Lcom/ibm/icu/impl/ICUResourceBundle$2$1;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$2;)V

    .line 618
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 620
    invoke-static {v0}, Lcom/ibm/icu/impl/URLHandler;->get(Ljava/net/URL;)Lcom/ibm/icu/impl/URLHandler;

    move-result-object v3

    .line 621
    if-eqz v3, :cond_3

    .line 622
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Lcom/ibm/icu/impl/URLHandler;->guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ouch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " is null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
