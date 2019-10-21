# java-swingpublic class LoginScreen extends JFrame {

    public LoginScreen() {
        setTitle("Tela de Login");
        setSize(230, 220);
        setResizable(false);
        setLayout();
    }

    private void setLayout(){
        JPanel panel = new JPanel();
        panel.setLayout(null);
        panel.setBackground(Color.LIGHT_yellow);
        panel.setBorder(
                BorderFactory.createCompoundBorder(
                        BorderFactory.createEmptyBorder(5, 5, 5, 5),
                        BorderFactory.createTitledBorder(
                                BorderFactory.createLineBorder(Color.BLACK),
                                "Login"
                        )
                )
        );

        JLabel labelUsuario = new JLabel("Usuário:");
        labelUsuario.setBounds(25,1,100,100);

        JLabel labelSenha = new JLabel("Senha:");
        labelSenha.setBounds(33,27,100,100);

        JTextField userField = new JTextField();
        userField.setToolTipText("Usuário");
        userField.setBounds(75,38,100,20);

        JPasswordField passwordField = new JPasswordField();
        passwordField.setToolTipText("Senha");
        passwordField.setBounds(78,65,120,20);

        JButton buttonLoggin = new JButton("Acessar");
        buttonLoggin.setBounds(75,95,100,20);

        JCheckBox keepLogged = new JCheckBox("Manter acessado");
        keepLogged.setBackground(Color.LIGHT_yellow);
        keepLogged.setBounds(75,120,125,20);

        JLabel linkPassword = new JLabel("Nao sei minha senha");
        linkPassword.setForeground(Color.MAGENTA);
        linkPassword.setBounds(65,100,150,100);

        panel.add(keepLogged);
        panel.add(buttonLoggin);
        panel.add(labelUsuario);
        panel.add(labelSenha);
        panel.add(userField);
        panel.add(passwordField);
        panel.add(linkPassword);
        add(panel);
    }
}
