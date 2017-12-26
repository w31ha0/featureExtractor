.class Lcom/facebook/AppEventsLogger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$eventTime:J

.field private final synthetic val$logger:Lcom/facebook/AppEventsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$2;->val$logger:Lcom/facebook/AppEventsLogger;

    iput-wide p2, p0, Lcom/facebook/AppEventsLogger$2;->val$eventTime:J

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$2;->val$logger:Lcom/facebook/AppEventsLogger;

    iget-wide v1, p0, Lcom/facebook/AppEventsLogger$2;->val$eventTime:J

    invoke-static {v0, v1, v2}, Lcom/facebook/AppEventsLogger;->access$4(Lcom/facebook/AppEventsLogger;J)V

    .line 340
    return-void
.end method
