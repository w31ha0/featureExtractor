.class Lcom/netflix/msl/msg/MslControl$DummyMessageRegistry;
.super Ljava/lang/Object;
.source "MslControl.java"

# interfaces
.implements Lcom/netflix/msl/msg/ErrorMessageRegistry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$1;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$DummyMessageRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/MslError;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserMessage(Ljava/lang/Throwable;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method
