defmodule Pigeon.TestConfig do
  alias Pigeon.{APNS, FCM, ADM}

  def apns_dynamic do
    APNS.Config.new(
      name: :apns_dynamic,
      cert: "cert.pem",
      key: "key_unencrypted.pem",
      mode: :dev
    )
  end

  def fcm_dynamic do
    FCM.Config.new(
      name: :fcm_dynamic,
      key: System.get_env("GCM_KEY")
    )
  end

  def adm_dynamic do
    ADM.Config.new(
      name: :adm_dynamic,
      client_id: System.get_env("ADM_OAUTH2_CLIENT_ID"),
      client_secret: System.get_env("ADM_OAUTH2_CLIENT_SECRET")
    )
  end
end
