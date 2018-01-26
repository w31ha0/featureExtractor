.class public Lcom/biznessapps/fragments/twitter/TweetFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "TweetFragment.java"


# static fields
.field private static final COUNTER_TEXT:Ljava/lang/String; = "Counter: "

.field private static final LUCE_LADIES:Ljava/lang/String; = "@LuceLadies"

.field private static final hashTags:Ljava/lang/String; = "hashTags"

.field private static final message:Ljava/lang/String; = "Clare Boothe Luce Policy Institute (CBLPI) is exempt from federal income taxation under IRCsection 501(c)(3) and is not permitted to, and does not, engage in supporting or opposingcandidates for public office. Please help us by not using our Twitter communications for suchmatters."

.field private static final recipients:Ljava/lang/String; = "recipients"

.field private static final title:Ljava/lang/String; = "disclosure"

.field private static final tweeting:Ljava/lang/String; = "Tweeting..."


# instance fields
.field private counterTextView:Landroid/widget/TextView;

.field private hashtagsButton:Landroid/widget/ImageButton;

.field private infoButton:Landroid/widget/ImageButton;

.field private messageTextView:Landroid/widget/EditText;

.field private recipientButton:Landroid/widget/ImageButton;

.field private tweetButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/twitter/TweetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TweetFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->openTwitterLoginView()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/twitter/TweetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TweetFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->showInfoDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/twitter/TweetFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TweetFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/twitter/TweetFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TweetFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/twitter/TweetFragment;->setTweetCounddown(Ljava/lang/String;)V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->recipientButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$2;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->hashtagsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$3;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->tweetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$4;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->infoButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$5;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$6;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$7;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 205
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_recipients_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->recipientButton:Landroid/widget/ImageButton;

    .line 132
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_tweet_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->tweetButton:Landroid/widget/ImageButton;

    .line 133
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_hashtags_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->hashtagsButton:Landroid/widget/ImageButton;

    .line 134
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_info_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->infoButton:Landroid/widget/ImageButton;

    .line 135
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_text_counter:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->counterTextView:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->counterTextView:Landroid/widget/TextView;

    const-string v1, "Counter: "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_text_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    .line 138
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    const-string v1, "@LuceLadies"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->setTweetCounddown(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private openTwitterLoginView()V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/biznessapps/fragments/twitter/TweetFragment;->tweet(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "TWITTER_LOGIN_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/twitter/TweetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setTweetCounddown(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->counterTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->tweetButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->counterTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->tweetButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->counterTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showInfoDialog()V
    .locals 5

    .prologue
    .line 208
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "disclosure"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 210
    const-string v2, "Clare Boothe Luce Policy Institute (CBLPI) is exempt from federal income taxation under IRCsection 501(c)(3) and is not permitted to, and does not, engage in supporting or opposingcandidates for public office. Please help us by not using our Twitter communications for suchmatters."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v4, Lcom/biznessapps/fragments/twitter/TweetFragment$8;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/twitter/TweetFragment$8;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 219
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method private tweet(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataToTweet"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/fragments/twitter/TweetFragment$1;-><init>(Lcom/biznessapps/fragments/twitter/TweetFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    .line 57
    if-eqz p3, :cond_2

    .line 58
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 59
    const-string v2, "SELECTED_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "contents":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "currentText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {p0, v1}, Lcom/biznessapps/fragments/twitter/TweetFragment;->setTweetCounddown(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-ne p1, v3, :cond_0

    .line 65
    const-string v2, "SELECTED_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0    # "contents":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "currentText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->setTweetCounddown(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x3

    if-ne v2, p2, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->twitting_failure:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 74
    :cond_3
    if-ne v3, p1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/biznessapps/fragments/twitter/TweetFragment;->tweet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    sget v0, Lcom/biznessapps/layout/R$layout;->twitter_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->root:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 51
    invoke-direct {p0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->initListeners()V

    .line 52
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method
