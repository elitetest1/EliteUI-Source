.class Landroid/hardware/hdmi/HdmiTvClient$4;
.super Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiTvClient$4;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReceived(III[B)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiTvClient$4;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;->onReceived(III[B)V

    return-void
.end method
