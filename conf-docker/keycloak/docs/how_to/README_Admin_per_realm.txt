https://forum.decentci.ncsa.illinois.edu/t/create-a-keycloak-realm-and-realm-admin/20/1
=====================
Create a new realm with the Add realm button in the realm selection box at the top left. Enter this new realm.
Create regular user in a realm:
Go to users (sidebar) → add user (button on the right side)
Fill in required fields and press save button.
Open Credentials tab and set user password.
Open Role Mapping tab:
assign roles (filter by client , category realm-management ,  select realm-admin and press Add selected).
Go to https://$KEYCLOAK_DOMAIN/auth/admin/$REALM_NAME/console (replace $REALM_NAME with realm name in which you created the user) and login.
You should see admin UI only for this realm.