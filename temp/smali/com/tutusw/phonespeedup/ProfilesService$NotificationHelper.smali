.class Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;
.super Ljava/lang/Object;
.source "ProfilesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfilesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHelper"
.end annotation


# instance fields
.field private contentTitle:Ljava/lang/String;

.field private launch:Landroid/app/PendingIntent;

.field private notification:Landroid/app/Notification;

.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfilesService;

.field private warning:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfilesService;)V
    .locals 7

    .prologue
    const v6, 0x7f020006

    const/4 v5, 0x0

    .line 325
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Landroid/app/Notification;

    .line 301
    const v1, 0x7f020003

    .line 302
    const-string v2, "Speedup \u914d\u7f6e"

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 300
    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    .line 305
    new-instance v0, Landroid/app/Notification;

    .line 307
    const-string v1, "\u6545\u969c\u5b89\u5168\u8b66\u544a"

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 305
    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    .line 310
    iget-object v0, p1, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    const-class v3, Lcom/tutusw/phonespeedup/Setcpu;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->launch:Landroid/app/PendingIntent;

    .line 312
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iget-object v1, p1, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    const-string v2, "Speedup \u914d\u7f6e"

    const-string v3, ""

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->launch:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 313
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 315
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iget-object v1, p1, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    const-string v2, "\u6e29\u5ea6\u8b66\u544a"

    const-string v3, "\u624b\u673a\u53ef\u80fd\u5904\u4e8e\u8fc7\u70ed\u72b6\u6001"

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->launch:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 316
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iput v6, v0, Landroid/app/Notification;->icon:I

    .line 318
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 319
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 320
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    const/high16 v1, -0x10000

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 321
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    const/16 v1, 0x12c

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 322
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 323
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 324
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method


# virtual methods
.method show(IIILjava/lang/String;)V
    .locals 5
    .param p1, "profileid"    # I
    .param p2, "max"    # I
    .param p3, "min"    # I
    .param p4, "governor"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f020006

    const v2, 0x7f020003

    const v1, 0x7f020005

    .line 328
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 359
    const-string v0, "\u4e3b\u9875\u9762 \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \u6700\u5927\u503c, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, p3, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6700\u5c0f\u503c, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->launch:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 364
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 367
    :cond_0
    return-void

    .line 331
    :pswitch_0
    const-string v0, "\u5145\u7535/\u5145\u6ee1 \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v1, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 335
    :pswitch_1
    const-string v0, "AC\u5145\u7535/\u5145\u6ee1 \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v1, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 339
    :pswitch_2
    const-string v0, "USB\u5145\u7535/\u5145\u6ee1 \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v1, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 343
    :pswitch_3
    const-string v0, "\u5c4f\u5e55\u5173\u95ed \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 347
    :pswitch_4
    const-string v0, "\u7535\u6c60\u7ea7\u522b \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    const v1, 0x7f020004

    iput v1, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 351
    :pswitch_5
    const-string v0, "\u6e29\u5ea6 \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v3, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 355
    :pswitch_6
    const-string v0, "CPU \u6e29\u5ea6 \u914d\u7f6e"

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->contentTitle:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->notification:Landroid/app/Notification;

    iput v3, v0, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method showWarning(II)V
    .locals 7
    .param p1, "tempCurrent"    # I
    .param p2, "tempLimit"    # I

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const-string v6, "\u00b0C"

    .line 370
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e29\u5ea6\u8b66\u544a: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v3, p1

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0C"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e29\u5ea6\u8d85\u8fc7 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0C"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->launch:Landroid/app/PendingIntent;

    .line 370
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 372
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->warning:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 373
    return-void
.end method
