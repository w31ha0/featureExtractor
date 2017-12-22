.class final Lio/reactivex/internal/util/ExceptionHelper$Termination;
.super Ljava/lang/Throwable;
.source "ExceptionHelper.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "No further exceptions"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 119
    return-object p0
.end method
