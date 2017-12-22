.class Lcom/ibm/icu/impl/ICUResourceBundle$2$1;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Lcom/ibm/icu/impl/URLHandler$URLVisitor;


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/ICUResourceBundle$2;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$2;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2$1;->this$0:Lcom/ibm/icu/impl/ICUResourceBundle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 612
    const-string/jumbo v0, ".res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2$1;->this$0:Lcom/ibm/icu/impl/ICUResourceBundle$2;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    return-void
.end method
