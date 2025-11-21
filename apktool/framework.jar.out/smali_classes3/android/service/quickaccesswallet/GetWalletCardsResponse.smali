.class public final Landroid/service/quickaccesswallet/GetWalletCardsResponse;
.super Ljava/lang/Object;
.source "GetWalletCardsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSelectedIndex:I

.field private final blacklist mWalletCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .locals 0

    invoke-static {p0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsResponse$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    iput p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-class v0, Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v2, Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-direct {v1, v0, p0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;-><init>(Ljava/util/List;I)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSelectedIndex()I
    .locals 0

    iget p0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    return p0
.end method

.method public whitelist getWalletCards()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget p0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
