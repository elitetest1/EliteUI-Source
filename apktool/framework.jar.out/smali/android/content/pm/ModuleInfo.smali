.class public final Landroid/content/pm/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApexModuleName:Ljava/lang/String;

.field private blacklist mApkInApexPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHidden:Z

.field private blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/ModuleInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ModuleInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ModuleInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ModuleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ModuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/content/pm/ModuleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/content/pm/ModuleInfo;

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    iget-object v2, p1, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iget-boolean p1, p1, Landroid/content/pm/ModuleInfo;->mHidden:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getApexModuleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getApkInApexPackageNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist isHidden()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    return p0
.end method

.method public blacklist setApexModuleName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setApkInApexPackageNames(Ljava/util/Collection;)Landroid/content/pm/ModuleInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ModuleInfo;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setHidden(Z)Landroid/content/pm/ModuleInfo;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    return-object p0
.end method

.method public blacklist setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModuleInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
