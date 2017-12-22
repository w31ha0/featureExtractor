.class Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;
.super Ljava/lang/Object;
.source "MdxNotificationManagerLollipop.java"


# static fields
.field private static final PAUSE:Ljava/lang/String; = "Pause"

.field private static final PLAY:Ljava/lang/String; = "Play"

.field private static final REWIND:Ljava/lang/String; = "Rewind"

.field private static final SKIPBACK_SECONDS:I = -0x1e

.field private static final STOP:Ljava/lang/String; = "Stop"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$1;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;-><init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)V

    return-void
.end method

.method private createPlayerBuilder()Landroid/app/Notification$Builder;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 322
    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "createPlayerBuilder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 328
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201b3

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 330
    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020219

    const-string/jumbo v2, "Rewind"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 331
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    const/16 v4, -0x1e

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSkipbackIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02021d

    const-string/jumbo v2, "Pause"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 332
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResumeIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02021f

    const-string/jumbo v2, "Stop"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 333
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method private createPlayerPausedBuilder()Landroid/app/Notification$Builder;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 306
    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "createPlayerPausedBuilder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201b3

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 314
    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020219

    const-string/jumbo v2, "Rewind"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 315
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    const/16 v4, -0x1e

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSkipbackIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02021b

    const-string/jumbo v2, "Play"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 316
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPauseIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02021f

    const-string/jumbo v2, "Stop"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 317
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method private createPostPlayerBuilder()Landroid/app/Notification$Builder;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 293
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201b3

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 299
    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02021d

    const-string/jumbo v2, "Play"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 300
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02021f

    const-string/jumbo v2, "Stop"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    .line 301
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 293
    return-object v0
.end method


# virtual methods
.method getBuilder(ZZ)Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->createPostPlayerBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 284
    :cond_0
    if-eqz p2, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->createPlayerBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->createPlayerPausedBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0
.end method
