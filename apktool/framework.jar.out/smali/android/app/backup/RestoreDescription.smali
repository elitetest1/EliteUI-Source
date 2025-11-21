.class public Landroid/app/backup/RestoreDescription;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/backup/RestoreDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

.field private static final greylist-max-o NO_MORE_PACKAGES_SENTINEL:Ljava/lang/String; = "NO_MORE_PACKAGES"

.field public static final whitelist TYPE_FULL_STREAM:I = 0x2

.field public static final whitelist TYPE_KEY_VALUE:I = 0x1


# instance fields
.field private final greylist-max-o mDataType:I

.field private final greylist-max-o mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/app/backup/RestoreDescription;

    const-string v1, "NO_MORE_PACKAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    new-instance v0, Landroid/app/backup/RestoreDescription$1;

    invoke-direct {v0}, Landroid/app/backup/RestoreDescription$1;-><init>()V

    sput-object v0, Landroid/app/backup/RestoreDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getDataType()I
    .locals 0

    iget p0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RestoreDescription{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "KEY_VALUE"

    goto :goto_0

    :cond_0
    const-string p0, "STREAM"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
