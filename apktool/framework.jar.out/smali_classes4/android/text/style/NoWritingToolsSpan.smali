.class public final Landroid/text/style/NoWritingToolsSpan;
.super Ljava/lang/Object;
.source "NoWritingToolsSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/NoWritingToolsSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/style/NoWritingToolsSpan$1;

    invoke-direct {v0}, Landroid/text/style/NoWritingToolsSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/NoWritingToolsSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/NoWritingToolsSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NoWritingToolsSpan{}"

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/NoWritingToolsSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
