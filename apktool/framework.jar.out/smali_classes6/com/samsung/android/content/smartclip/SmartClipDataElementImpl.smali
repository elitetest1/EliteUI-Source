.class public Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected blacklist mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mId:I

.field protected blacklist mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mRectOnScreen:Landroid/graphics/Rect;

.field protected blacklist mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

.field public blacklist mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

.field protected blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method private blacklist setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private blacklist setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private blacklist setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method


# virtual methods
.method public blacklist addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {p1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v1, :cond_2

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {v1, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {p1, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {p1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    return v2

    :cond_2
    return v0
.end method

.method public blacklist addTag(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    return v2

    :cond_2
    return v0
.end method

.method public whitelist clearMetaData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V

    return-void
.end method

.method public blacklist createChildInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-object v0
.end method

.method public blacklist dump()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->dump()Z

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist getAllTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getChildCount()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object p0
.end method

.method public blacklist getDumpString(ZZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\t"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    const-string v1, ")\t"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "Rect("

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "mRectOnScreen(NULL)\t"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v5, -0x1

    const-string v6, "@"

    if-eq p1, v5, :cond_2

    if-ltz p1, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v5

    if-ne v5, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Opacity BG("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_7

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v5, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v5}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "null"

    :cond_4
    if-ne p2, v4, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const-string p0, "No meta tag\t"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExtractionLevel()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getExtractionLevel()I

    move-result p0

    return p0
.end method

.method public blacklist getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object p0
.end method

.method public blacklist getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object p0
.end method

.method public whitelist getMetaAreaRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object p0
.end method

.method public blacklist getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object p0
.end method

.method public blacklist getParentCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object p0
.end method

.method public blacklist getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-object p0
.end method

.method public whitelist getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public blacklist isEmptyTag(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result p0

    if-lez p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v2

    if-lez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public blacklist newInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 1

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    return-object v0
.end method

.method public blacklist removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eq v1, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeChild : Incorrect parent of SemSmartClipDataElement. element="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SmartClipDataElementImpl"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->dump()Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-ne v0, p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-ne v0, p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist removeTags(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist setDataRepository(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-void
.end method

.method public whitelist setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public blacklist setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public blacklist traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eq v1, p1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object p0

    :cond_5
    return-object v0
.end method
