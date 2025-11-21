.class public Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.super Ljava/lang/Object;
.source "SemSmartClipMetaTag.java"


# instance fields
.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-void
.end method

.method public whitelist setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method
