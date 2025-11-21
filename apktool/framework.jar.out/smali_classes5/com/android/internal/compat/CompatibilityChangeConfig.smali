.class public final Lcom/android/internal/compat/CompatibilityChangeConfig;
.super Ljava/lang/Object;
.source "CompatibilityChangeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityChangeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeConfig$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityChangeConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/compat/Compatibility$ChangeConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    invoke-static {v0}, Lcom/android/internal/compat/CompatibilityChangeConfig;->toLongSet([J)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->toLongSet([J)Ljava/util/Set;

    move-result-object p1

    new-instance v1, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v1, v0, p1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityChangeConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist toLongSet([J)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist disabledChanges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {p0}, Landroid/compat/Compatibility$ChangeConfig;->getDisabledSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist enabledChanges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {p0}, Landroid/compat/Compatibility$ChangeConfig;->getEnabledSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isChangeEnabled(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {v0, p1, p2}, Landroid/compat/Compatibility$ChangeConfig;->isForceEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {p0, p1, p2}, Landroid/compat/Compatibility$ChangeConfig;->isForceDisabled(J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Change "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not defined."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {p2}, Landroid/compat/Compatibility$ChangeConfig;->getEnabledChangesArray()[J

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/compat/CompatibilityChangeConfig;->mChangeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {p0}, Landroid/compat/Compatibility$ChangeConfig;->getDisabledChangesArray()[J

    move-result-object p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
