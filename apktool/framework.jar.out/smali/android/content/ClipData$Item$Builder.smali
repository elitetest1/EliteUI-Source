.class public final Landroid/content/ClipData$Item$Builder;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHtmlText:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIntentSender:Landroid/content/IntentSender;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/ClipData$Item;
    .locals 7

    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v1, p0, Landroid/content/ClipData$Item$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/content/ClipData$Item$Builder;->mHtmlText:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/ClipData$Item$Builder;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Landroid/content/ClipData$Item$Builder;->mIntentSender:Landroid/content/IntentSender;

    iget-object v5, p0, Landroid/content/ClipData$Item$Builder;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;Landroid/content/ClipData-IA;)V

    return-object v0
.end method

.method public whitelist setHtmlText(Ljava/lang/String;)Landroid/content/ClipData$Item$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mHtmlText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/content/ClipData$Item$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist setIntentSender(Landroid/content/IntentSender;)Landroid/content/ClipData$Item$Builder;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/IntentSender;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected intent sender to be immutable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mIntentSender:Landroid/content/IntentSender;

    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/content/ClipData$Item$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setUri(Landroid/net/Uri;)Landroid/content/ClipData$Item$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method
