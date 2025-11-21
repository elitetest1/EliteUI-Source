.class public Landroid/content/pm/verify/domain/DomainSet;
.super Ljava/lang/Object;
.source "DomainSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/verify/domain/DomainSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDomains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/verify/domain/DomainSet$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainSet$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/content/pm/verify/domain/DomainSet;->unparcelDomains(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    const-class p0, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    const-class p0, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist parcelDomains(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {p1, p0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V

    return-void
.end method

.method private blacklist unparcelDomains(Landroid/os/Parcel;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readHostSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/content/pm/verify/domain/DomainSet;

    iget-object p0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    iget-object p1, p1, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDomains()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object p0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainSet;->parcelDomains(Landroid/os/Parcel;I)V

    return-void
.end method
