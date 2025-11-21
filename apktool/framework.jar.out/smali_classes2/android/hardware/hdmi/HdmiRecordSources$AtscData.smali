.class public final Landroid/hardware/hdmi/HdmiRecordSources$AtscData;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtscData"
.end annotation


# instance fields
.field private final greylist-max-o mProgramNumber:I

.field private final greylist-max-o mTransportStreamId:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    return-void
.end method


# virtual methods
.method public greylist-max-o toByteArray([BI)I
    .locals 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    iget p0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->-$$Nest$smthreeFieldsToSixBytes(III[BI)I

    move-result p0

    return p0
.end method
