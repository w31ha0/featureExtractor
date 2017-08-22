.class public Lcom/mopub/common/event/ErrorEvent;
.super Lcom/mopub/common/event/BaseEvent;
.source "ErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/event/ErrorEvent$Builder;
    }
.end annotation


# instance fields
.field private final mErrorClassName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorExceptionClassName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorLineNumber:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorMethodName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorStackTrace:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/common/event/ErrorEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mopub/common/event/ErrorEvent$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/common/event/BaseEvent;-><init>(Lcom/mopub/common/event/BaseEvent$Builder;)V

    .line 23
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$000(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorExceptionClassName:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$100(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorMessage:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$200(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorStackTrace:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$300(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorFileName:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$400(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorClassName:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$500(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorMethodName:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/mopub/common/event/ErrorEvent$Builder;->access$600(Lcom/mopub/common/event/ErrorEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorLineNumber:Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/event/ErrorEvent$Builder;Lcom/mopub/common/event/ErrorEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/common/event/ErrorEvent$Builder;
    .param p2, "x1"    # Lcom/mopub/common/event/ErrorEvent$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mopub/common/event/ErrorEvent;-><init>(Lcom/mopub/common/event/ErrorEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public getErrorClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorExceptionClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorExceptionClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorFileName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorLineNumber()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorLineNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMethodName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStackTrace()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mopub/common/event/ErrorEvent;->mErrorStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/mopub/common/event/BaseEvent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "string":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ErrorEvent\nErrorExceptionClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorExceptionClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nErrorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nErrorStackTrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nErrorFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nErrorClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nErrorMethodName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nErrorLineNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/mopub/common/event/ErrorEvent;->getErrorLineNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    return-object v1
.end method
