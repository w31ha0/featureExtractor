.class Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassManagerHolder;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"


# static fields
.field public static final instance:Lcom/facebook/network/connectionclass/ConnectionClassManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/network/connectionclass/ConnectionClassManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/network/connectionclass/ConnectionClassManager;-><init>(Lcom/facebook/network/connectionclass/ConnectionClassManager$1;)V

    sput-object v0, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassManagerHolder;->instance:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    return-void
.end method
