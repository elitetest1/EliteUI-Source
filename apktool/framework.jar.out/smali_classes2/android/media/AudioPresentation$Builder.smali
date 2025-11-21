.class public final Landroid/media/AudioPresentation$Builder;
.super Ljava/lang/Object;
.source "AudioPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioDescriptionAvailable:Z

.field private blacklist mDialogueEnhancementAvailable:Z

.field private blacklist mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLanguage:Landroid/icu/util/ULocale;

.field private blacklist mMasteringIndication:I

.field private final blacklist mPresentationId:I

.field private blacklist mProgramId:I

.field private blacklist mSpokenSubtitlesAvailable:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioPresentation$Builder;->mProgramId:I

    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioPresentation$Builder;->mLanguage:Landroid/icu/util/ULocale;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPresentation$Builder;->mMasteringIndication:I

    iput-boolean v0, p0, Landroid/media/AudioPresentation$Builder;->mAudioDescriptionAvailable:Z

    iput-boolean v0, p0, Landroid/media/AudioPresentation$Builder;->mSpokenSubtitlesAvailable:Z

    iput-boolean v0, p0, Landroid/media/AudioPresentation$Builder;->mDialogueEnhancementAvailable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    iput p1, p0, Landroid/media/AudioPresentation$Builder;->mPresentationId:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioPresentation;
    .locals 10

    new-instance v0, Landroid/media/AudioPresentation;

    iget v1, p0, Landroid/media/AudioPresentation$Builder;->mPresentationId:I

    iget v2, p0, Landroid/media/AudioPresentation$Builder;->mProgramId:I

    iget-object v3, p0, Landroid/media/AudioPresentation$Builder;->mLanguage:Landroid/icu/util/ULocale;

    iget v4, p0, Landroid/media/AudioPresentation$Builder;->mMasteringIndication:I

    iget-boolean v5, p0, Landroid/media/AudioPresentation$Builder;->mAudioDescriptionAvailable:Z

    iget-boolean v6, p0, Landroid/media/AudioPresentation$Builder;->mSpokenSubtitlesAvailable:Z

    iget-boolean v7, p0, Landroid/media/AudioPresentation$Builder;->mDialogueEnhancementAvailable:Z

    iget-object v8, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/AudioPresentation;-><init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;Landroid/media/AudioPresentation-IA;)V

    return-object v0
.end method

.method public whitelist setHasAudioDescription(Z)Landroid/media/AudioPresentation$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioPresentation$Builder;->mAudioDescriptionAvailable:Z

    return-object p0
.end method

.method public whitelist setHasDialogueEnhancement(Z)Landroid/media/AudioPresentation$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioPresentation$Builder;->mDialogueEnhancementAvailable:Z

    return-object p0
.end method

.method public whitelist setHasSpokenSubtitles(Z)Landroid/media/AudioPresentation$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioPresentation$Builder;->mSpokenSubtitlesAvailable:Z

    return-object p0
.end method

.method public whitelist setLabels(Ljava/util/Map;)Landroid/media/AudioPresentation$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/media/AudioPresentation$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setLocale(Landroid/icu/util/ULocale;)Landroid/media/AudioPresentation$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/AudioPresentation$Builder;->mLanguage:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public whitelist setMasteringIndication(I)Landroid/media/AudioPresentation$Builder;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown mastering indication: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioPresentation$Builder;->mMasteringIndication:I

    return-object p0
.end method

.method public whitelist setProgramId(I)Landroid/media/AudioPresentation$Builder;
    .locals 0

    iput p1, p0, Landroid/media/AudioPresentation$Builder;->mProgramId:I

    return-object p0
.end method
