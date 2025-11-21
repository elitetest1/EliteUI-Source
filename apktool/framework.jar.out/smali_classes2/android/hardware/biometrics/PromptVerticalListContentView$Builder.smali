.class public final Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
.super Ljava/lang/Object;
.source "PromptVerticalListContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/PromptVerticalListContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItemParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    return-void
.end method

.method private blacklist checkItemLimits(Landroid/hardware/biometrics/PromptContentItem;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->doesListItemExceedsCharLimit(Landroid/hardware/biometrics/PromptContentItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PromptVerticalListContentView"

    const-string v0, "The character number of list item exceeds 640"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 p1, 0x14

    if-gt p0, p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of list items exceeds 20"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist doesListItemExceedsCharLimit(Landroid/hardware/biometrics/PromptContentItem;)Z
    .locals 3

    instance-of p0, p1, Landroid/hardware/biometrics/PromptContentItemPlainText;

    const/4 v0, 0x1

    const/16 v1, 0x280

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    check-cast p1, Landroid/hardware/biometrics/PromptContentItemPlainText;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    instance-of p0, p1, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method


# virtual methods
.method public whitelist addListItem(Landroid/hardware/biometrics/PromptContentItem;)Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroid/hardware/biometrics/PromptContentItemParcelable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->checkItemLimits(Landroid/hardware/biometrics/PromptContentItem;)V

    return-object p0
.end method

.method public whitelist addListItem(Landroid/hardware/biometrics/PromptContentItem;I)Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroid/hardware/biometrics/PromptContentItemParcelable;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->checkItemLimits(Landroid/hardware/biometrics/PromptContentItem;)V

    return-object p0
.end method

.method public whitelist build()Landroid/hardware/biometrics/PromptVerticalListContentView;
    .locals 3

    new-instance v0, Landroid/hardware/biometrics/PromptVerticalListContentView;

    iget-object v1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mContentList:Ljava/util/List;

    iget-object p0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/hardware/biometrics/PromptVerticalListContentView;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/hardware/biometrics/PromptVerticalListContentView-IA;)V

    return-object v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe1

    if-le v0, v1, :cond_0

    const-string v0, "PromptVerticalListContentView"

    const-string v1, "The character number of description exceeds 225"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method
