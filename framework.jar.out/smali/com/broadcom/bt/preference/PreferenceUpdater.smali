.class public Lcom/broadcom/bt/preference/PreferenceUpdater;
.super Ljava/lang/Object;
.source "PreferenceUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateSummaryWithEditText(Landroid/preference/EditTextPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
