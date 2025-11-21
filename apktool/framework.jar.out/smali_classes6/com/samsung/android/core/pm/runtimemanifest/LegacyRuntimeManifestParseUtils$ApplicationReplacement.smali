.class public Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
.super Ljava/lang/Object;
.source "LegacyRuntimeManifestParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationReplacement"
.end annotation


# static fields
.field private static blacklist COERCED_LABEL:Ljava/lang/String; = "coerced_label"

.field private static blacklist ENABLED:Ljava/lang/String; = "enabled"

.field private static blacklist ICON:Ljava/lang/String; = "icon"

.field private static blacklist LABEL:Ljava/lang/String; = "label"


# instance fields
.field private blacklist mCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCoercedLabel:Ljava/lang/CharSequence;

.field private blacklist mEnabled:Z

.field private blacklist mIcon:I

.field private blacklist mLabel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist getCoercedLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    return p0
.end method

.method public blacklist getIconRes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    return p0
.end method

.method public blacklist getLabelRes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    return p0
.end method

.method public blacklist hasCoercedLabel()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist hasEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist hasIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist hasLabel()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist setCoercedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setLabelRes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    iget-object p0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
