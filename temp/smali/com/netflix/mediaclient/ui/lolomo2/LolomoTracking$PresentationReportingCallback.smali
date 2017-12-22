.class abstract Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;
.super Ljava/lang/Object;
.source "LolomoTracking.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final SLEEP_DELAY_MS:J = 0x1f4L


# instance fields
.field final originatedFrom:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;->originatedFrom:Ljava/lang/Object;

    .line 145
    return-void
.end method
